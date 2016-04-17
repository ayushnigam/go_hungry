using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class HomeAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        DetailsView1.DataBind();
    }


    protected void FileUpload1_Unload(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {

    }

    private bool UploadFile(bool isUpdate)
    {
        FileUpload uploader = (FileUpload)DetailsView1.FindControl("FileUpload1");
        Label uploadLabel = (Label)DetailsView1.FindControl("lblUpload");


        // Place files in a website subfolder named ProductImages.
        string uploadDirectory = Path.Combine(
        Request.PhysicalApplicationPath, "SpecialImage");
        string serverFileName = Path.GetFileName(uploader.PostedFile.FileName);
        string fullUploadPath = Path.Combine(uploadDirectory, serverFileName);

        // if no file is uploaded and the action is an update, use the existing picture (value stored in a hidden field on the gridview)
        if (uploader.PostedFile.FileName == "" && isUpdate)
        {
            HiddenField origfilename = (HiddenField)DetailsView1.FindControl("HiddenField1");
            SqlDataSource1.UpdateParameters["SpeImage"].DefaultValue = origfilename.Value;

            return true;
        }

        else
        {
            // Check the extension to make sure an image is being uploaded
            string extension = Path.GetExtension(uploader.PostedFile.FileName);
            switch (extension.ToLower())
            {
                case ".bmp":
                case ".gif":
                case ".jpg":
                    break;
                default:


                    return false; ;
            }

            //Save the file and set the update/insert parameter values to the name of the file.  Catch any exceptions.
            try
            {

                uploader.PostedFile.SaveAs(fullUploadPath);
                SqlDataSource1.UpdateParameters["SpeImage"].DefaultValue = serverFileName;
                SqlDataSource1.InsertParameters["SpeImage"].DefaultValue = serverFileName;
                return true;

            }
            catch (Exception err)
            {
                //uploadLabel.Text = err.Message;
                return false;

            }

        }
    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        if (!UploadFile(false))
        {
            e.Cancel = true;
        }
    }
}