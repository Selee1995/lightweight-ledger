.class Lcom/coderpage/lib/update/Updater$2;
.super Landroid/os/AsyncTask;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/lib/update/Updater;->checkNewVersion(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/coderpage/lib/update/Result<",
        "Lcom/coderpage/lib/update/ApkModel;",
        "Lcom/coderpage/lib/update/Error;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/lib/update/Updater;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/coderpage/lib/update/Updater;Landroid/app/Dialog;Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$progressDialog",
            "val$appContext",
            "val$callBack",
            "val$context"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    iput-object p2, p0, Lcom/coderpage/lib/update/Updater$2;->val$progressDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/coderpage/lib/update/Updater$2;->val$appContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/coderpage/lib/update/Updater$2;->val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    iput-object p5, p0, Lcom/coderpage/lib/update/Updater$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/coderpage/lib/update/Result;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/coderpage/lib/update/Result<",
            "Lcom/coderpage/lib/update/ApkModel;",
            "Lcom/coderpage/lib/update/Error;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p1, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    invoke-static {p1}, Lcom/coderpage/lib/update/Updater;->access$000(Lcom/coderpage/lib/update/Updater;)Lcom/coderpage/lib/update/SourceFetcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/lib/update/SourceFetcher;->fetchApkModel()Lcom/coderpage/lib/update/Result;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coderpage/lib/update/Updater$2;->doInBackground([Ljava/lang/Void;)Lcom/coderpage/lib/update/Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/coderpage/lib/update/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/lib/update/Result<",
            "Lcom/coderpage/lib/update/ApkModel;",
            "Lcom/coderpage/lib/update/Error;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    iget-object v1, p0, Lcom/coderpage/lib/update/Updater$2;->val$progressDialog:Landroid/app/Dialog;

    invoke-static {v0, v1}, Lcom/coderpage/lib/update/Updater;->access$100(Lcom/coderpage/lib/update/Updater;Landroid/app/Dialog;)V

    .line 66
    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->isOk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/lib/update/ApkModel;

    invoke-static {v0, v2}, Lcom/coderpage/lib/update/PreferenceUtils;->refreshNewVersionApkInfo(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V

    .line 68
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/lib/update/ApkModel;

    invoke-virtual {v0, v2}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;->onCheckFinish(Lcom/coderpage/lib/update/ApkModel;)V

    .line 69
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    invoke-static {v0}, Lcom/coderpage/lib/update/Updater;->access$200(Lcom/coderpage/lib/update/Updater;)Lcom/coderpage/lib/update/VersionComparator;

    move-result-object v0

    iget-object v2, p0, Lcom/coderpage/lib/update/Updater$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/lib/update/ApkModel;

    invoke-interface {v0, v2, v3}, Lcom/coderpage/lib/update/VersionComparator;->compare(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/coderpage/lib/update/Updater$2;->val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/lib/update/ApkModel;

    invoke-virtual {v2, v3}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;->onFindNewVersion(Lcom/coderpage/lib/update/ApkModel;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/coderpage/lib/update/Updater$2;->val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/lib/update/ApkModel;

    invoke-virtual {v2, v3}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;->onAlreadyNewestVersion(Lcom/coderpage/lib/update/ApkModel;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 75
    iget-object v2, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    invoke-static {v2}, Lcom/coderpage/lib/update/Updater;->access$300(Lcom/coderpage/lib/update/Updater;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    iget-object v3, p0, Lcom/coderpage/lib/update/Updater$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->data()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/lib/update/ApkModel;

    iget-object v4, p0, Lcom/coderpage/lib/update/Updater$2;->val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    invoke-virtual {v2, v3, p1, v4}, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialogForce(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;

    :cond_1
    if-nez v0, :cond_5

    .line 78
    iget-object p1, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    invoke-static {p1}, Lcom/coderpage/lib/update/Updater;->access$400(Lcom/coderpage/lib/update/Updater;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 79
    iget-object p1, p0, Lcom/coderpage/lib/update/Updater$2;->val$appContext:Landroid/content/Context;

    sget v0, Lcom/coderpage/lib/update/R$string;->libupdate_toast_already_latest_version:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->this$0:Lcom/coderpage/lib/update/Updater;

    invoke-static {v0}, Lcom/coderpage/lib/update/Updater;->access$400(Lcom/coderpage/lib/update/Updater;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->error()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/lib/update/Error;

    invoke-virtual {v0}, Lcom/coderpage/lib/update/Error;->code()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->error()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/lib/update/Error;

    invoke-virtual {v2}, Lcom/coderpage/lib/update/Error;->message()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/coderpage/lib/update/Updater$2;->val$callBack:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    invoke-virtual {p1}, Lcom/coderpage/lib/update/Result;->error()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/lib/update/Error;

    invoke-virtual {v0, p1}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;->onCheckFail(Lcom/coderpage/lib/update/Error;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 57
    check-cast p1, Lcom/coderpage/lib/update/Result;

    invoke-virtual {p0, p1}, Lcom/coderpage/lib/update/Updater$2;->onPostExecute(Lcom/coderpage/lib/update/Result;)V

    return-void
.end method
