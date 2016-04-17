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

public partial class AdimanAd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        if (!UploadFile(true))
        {
            e.Cancel = true;
        }
    }

    private bool UploadFile(bool isUpdate)
    {
        FileUpload uploader = (FileUpload)DetailsView1.FindControl("FileUpload1");
        Label uploadLabel = (Label)DetailsView1.FindControl("lblUpload");


        // Place files in a website subfolder named ProductImages.
        string uploadDirectory = Path.Combine(
        Request.PhysicalApplicationPath, "AdvImage");
        string serverFileName = Path.GetFileName(uploader.PostedFile.FileName);
        string fullUploadPath = Path.Combine(uploadDirectory, serverFileName);

        // if no file is uploaded and the action is an update, use the existing picture (value stored in a hidden field on the gridview)
        if (uploader.PostedFile.FileName == "" && isUpdate)
        {
            HiddenField origfilename = (HiddenField)DetailsView1.FindControl("HiddenField1");
            SqlDataSource2.UpdateParameters["Adv_image"].DefaultValue = origfilename.Value;

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
                SqlDataSource2.UpdateParameters["Adv_image"].DefaultValue = serverFileName;
                SqlDataSource2.InsertParameters["Adv_image"].DefaultValue = serverFileName;
                return true;

            }
            catch (Exception err)
            {
                //uploadLabel.Text = err.Message;
                return false;

            }

        }
    }
    protected void EditImage_Click(object sender, EventArgs e)
    {

    }
    protected void btnAddProduct_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DetailsView1.Visible = true;
        DetailsView1.DefaultMode = DetailsViewMode.Insert;

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //GridView1.Visible = false;
        //DetailsView1.Visible = true;
        //DetailsView1.DefaultMode = DetailsViewMode.Edit;
        //DetailsView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DetailsView1.Visible = true;
        DetailsView1.DefaultMode = DetailsViewMode.Edit;
        DetailsView1.DataBind();
    }



    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        if (!UploadFile(false))
        {
            e.Cancel = true;
        }
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.Visible = true;
        DetailsView1.Visible = false;
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Cancel")
        {
            GridView1.Visible = true;
            DetailsView1.Visible = false;
        }
    }


    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        //GridView1.DataBind();
        //GridView1.Visible = true;
        //DetailsView1.Visible = false;
    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.Visible = true;
        DetailsView1.Visible = false;
    }
}