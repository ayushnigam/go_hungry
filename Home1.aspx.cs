using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //private bool UploadFile(bool isUpdate)
    //{
    //    FileUpload uploader = (FileUpload)DetailsView1.FindControl("FileUpload1");
    //    Label uploadLabel = (Label)DetailsView1.FindControl("lblUpload");


    //    // Place files in a website subfolder named ProductImages.
    //    string uploadDirectory = Path.Combine(
    //    Request.PhysicalApplicationPath, "AdvImage");
    //    string serverFileName = Path.GetFileName(uploader.PostedFile.FileName);
    //    string fullUploadPath = Path.Combine(uploadDirectory, serverFileName);

    //    // if no file is uploaded and the action is an update, use the existing picture (value stored in a hidden field on the gridview)
    //    if (uploader.PostedFile.FileName == "" && isUpdate)
    //    {
    //        HiddenField origfilename = (HiddenField)DetailsView1.FindControl("HiddenField1");
    //        SqlDataSource1.UpdateParameters["Adv_image"].DefaultValue = origfilename.Value;

    //        return true;
    //    }

    //    else
    //    {
    //        // Check the extension to make sure an image is being uploaded
    //        string extension = Path.GetExtension(uploader.PostedFile.FileName);
    //        switch (extension.ToLower())
    //        {
    //            case ".bmp":
    //            case ".gif":
    //            case ".jpg":
    //                break;
    //            default:


    //                return false; ;
    //        }

    //        //Save the file and set the update/insert parameter values to the name of the file.  Catch any exceptions.
    //        try
    //        {

    //            uploader.PostedFile.SaveAs(fullUploadPath);
    //            SqlDataSource1.UpdateParameters["Prod_Image"].DefaultValue = serverFileName;
    //            SqlDataSource1.InsertParameters["Prod_Image"].DefaultValue = serverFileName;
    //            return true;

    //        }
    //        catch (Exception err)
    //        {
    //            //uploadLabel.Text = err.Message;
    //            return false;

    //        }

    //    }
    //}
}