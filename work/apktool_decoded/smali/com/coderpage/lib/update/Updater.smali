.class public Lcom/coderpage/lib/update/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;,
        Lcom/coderpage/lib/update/Updater$Builder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialogStyle:I

.field private executor:Ljava/util/concurrent/Executor;

.field private notifyIconResId:I

.field private showApkDownloadConfirmDialog:Z

.field private showCheckProgressDialog:Z

.field private showCheckResultToast:Z

.field private sourceFetcher:Lcom/coderpage/lib/update/SourceFetcher;

.field private versionComparator:Lcom/coderpage/lib/update/VersionComparator;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sourceFetcher"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/coderpage/lib/update/Updater;->showCheckProgressDialog:Z

    .line 34
    iput-boolean v0, p0, Lcom/coderpage/lib/update/Updater;->showCheckResultToast:Z

    .line 35
    iput-boolean v0, p0, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialog:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/lib/update/Updater;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/coderpage/lib/update/Updater;->sourceFetcher:Lcom/coderpage/lib/update/SourceFetcher;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;Lcom/coderpage/lib/update/Updater$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/coderpage/lib/update/Updater;-><init>(Landroid/content/Context;Lcom/coderpage/lib/update/SourceFetcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/lib/update/Updater;)Lcom/coderpage/lib/update/SourceFetcher;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coderpage/lib/update/Updater;->sourceFetcher:Lcom/coderpage/lib/update/SourceFetcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/lib/update/Updater;Landroid/app/Dialog;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/coderpage/lib/update/Updater;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/lib/update/Updater;)Lcom/coderpage/lib/update/VersionComparator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coderpage/lib/update/Updater;->versionComparator:Lcom/coderpage/lib/update/VersionComparator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coderpage/lib/update/Updater;Lcom/coderpage/lib/update/VersionComparator;)Lcom/coderpage/lib/update/VersionComparator;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater;->versionComparator:Lcom/coderpage/lib/update/VersionComparator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coderpage/lib/update/Updater;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialog:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coderpage/lib/update/Updater;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coderpage/lib/update/Updater;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/coderpage/lib/update/Updater;->showCheckResultToast:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coderpage/lib/update/Updater;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/coderpage/lib/update/Updater;->showCheckResultToast:Z

    return p1
.end method

.method static synthetic access$602(Lcom/coderpage/lib/update/Updater;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater;->executor:Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method static synthetic access$702(Lcom/coderpage/lib/update/Updater;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/coderpage/lib/update/Updater;->notifyIconResId:I

    return p1
.end method

.method static synthetic access$802(Lcom/coderpage/lib/update/Updater;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/coderpage/lib/update/Updater;->dialogStyle:I

    return p1
.end method

.method static synthetic access$902(Lcom/coderpage/lib/update/Updater;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/coderpage/lib/update/Updater;->showCheckProgressDialog:Z

    return p1
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static getBuildCodePersisted(Landroid/content/Context;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 179
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getNewVersionBuildCode(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNewVersionApkModelPersisted(Landroid/content/Context;)Lcom/coderpage/lib/update/ApkModel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->restoreApkModel(Landroid/content/Context;)Lcom/coderpage/lib/update/ApkModel;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionPersisted(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getNewVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasNewVersion(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/coderpage/lib/update/ApkModelImpl;

    invoke-direct {v0}, Lcom/coderpage/lib/update/ApkModelImpl;-><init>()V

    .line 200
    invoke-static {p0}, Lcom/coderpage/lib/update/Updater;->getVersionPersisted(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/lib/update/ApkModelImpl;->setVersion(Ljava/lang/String;)V

    .line 201
    invoke-static {p0}, Lcom/coderpage/lib/update/Updater;->getBuildCodePersisted(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/lib/update/ApkModelImpl;->setBuildCode(J)V

    .line 202
    new-instance v1, Lcom/coderpage/lib/update/DefaultVersionComparator;

    invoke-direct {v1}, Lcom/coderpage/lib/update/DefaultVersionComparator;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/coderpage/lib/update/DefaultVersionComparator;->compare(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$showApkDownloadConfirmDialog$2(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 264
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v0

    xor-int/lit8 p1, p3, 0x1

    .line 263
    invoke-static {p0, p2, v0, v1, p1}, Lcom/coderpage/lib/update/PreferenceUtils;->setRemindAgain(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-void
.end method

.method private showApkDownloadConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;ZLcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel",
            "force",
            "callback"
        }
    .end annotation

    .line 225
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/coderpage/lib/update/PreferenceUtils;->isRemindAgain(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-object v1

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 231
    iget v0, p0, Lcom/coderpage/lib/update/Updater;->dialogStyle:I

    if-eqz v0, :cond_1

    .line 232
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 234
    :cond_1
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x1

    .line 236
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/coderpage/lib/update/R$string;->libupdate_alert_new_version_title:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 239
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 240
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 237
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/coderpage/lib/update/R$layout;->libupdate_apk_download_content_view:I

    .line 241
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/coderpage/lib/update/R$string;->libupdate_alert_cancel:I

    .line 242
    invoke-virtual {v2, v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/coderpage/lib/update/R$string;->libupdate_alert_confirm_download:I

    new-instance v3, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;

    invoke-direct {v3, p0, p3, p2, p4}, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;-><init>(Lcom/coderpage/lib/update/Updater;Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V

    .line 243
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p4

    .line 256
    invoke-virtual {p4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p4

    .line 257
    invoke-virtual {p4, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 258
    invoke-virtual {p4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 259
    sget v1, Lcom/coderpage/lib/update/R$id;->tvMessage:I

    invoke-virtual {p4, v1}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 260
    sget v2, Lcom/coderpage/lib/update/R$id;->checkboxDoNotRemindAgain:I

    invoke-virtual {p4, v2}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 261
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getChangelog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v1, Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;

    invoke-direct {v1, p3, p2}, Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;-><init>(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    invoke-static {p1}, Lcom/coderpage/lib/update/NetWorkUtils;->isWifiOK(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getApkSizeBytes()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TAG"

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getApkSizeBytes()J

    move-result-wide p2

    long-to-float p2, p2

    const/high16 p3, 0x49800000    # 1048576.0f

    div-float/2addr p2, p3

    .line 269
    new-instance p3, Ljava/text/DecimalFormat;

    const-string v1, ".00"

    invoke-direct {p3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p2

    .line 270
    invoke-virtual {p3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    .line 271
    sget p3, Lcom/coderpage/lib/update/R$id;->tvWifiTip:I

    invoke-virtual {p4, p3}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 272
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/coderpage/lib/update/R$string;->libupdate_alert_without_wifi:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p4
.end method

.method private showCheckProgressDialog(Landroid/content/Context;I)Landroid/support/v7/app/AlertDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "text"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coderpage/lib/update/R$layout;->libupdate_widget_version_progress_dialog:I

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    sget v1, Lcom/coderpage/lib/update/R$id;->tvText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget p2, p0, Lcom/coderpage/lib/update/Updater;->dialogStyle:I

    if-eqz p2, :cond_0

    .line 211
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 213
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 217
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-object p1
.end method


# virtual methods
.method public checkNewVersion(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/coderpage/lib/update/Updater$1;

    invoke-direct {v0, p0}, Lcom/coderpage/lib/update/Updater$1;-><init>(Lcom/coderpage/lib/update/Updater;)V

    invoke-virtual {p0, p1, v0}, Lcom/coderpage/lib/update/Updater;->checkNewVersion(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V

    return-void
.end method

.method public checkNewVersion(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callBack"
        }
    .end annotation

    .line 48
    invoke-virtual {p2}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;->onCheckStart()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 51
    iget-boolean v0, p0, Lcom/coderpage/lib/update/Updater;->showCheckProgressDialog:Z

    if-eqz v0, :cond_0

    .line 52
    sget v0, Lcom/coderpage/lib/update/R$string;->libupdate_alert_on_checking_new_version:I

    invoke-direct {p0, p1, v0}, Lcom/coderpage/lib/update/Updater;->showCheckProgressDialog(Landroid/content/Context;I)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 56
    new-instance v6, Lcom/coderpage/lib/update/Updater$2;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/coderpage/lib/update/Updater$2;-><init>(Lcom/coderpage/lib/update/Updater;Landroid/app/Dialog;Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;Landroid/content/Context;)V

    .line 94
    iget-object p1, p0, Lcom/coderpage/lib/update/Updater;->executor:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-array p2, p2, [Ljava/lang/Void;

    .line 95
    invoke-virtual {v6, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_1
    new-array p1, p2, [Ljava/lang/Void;

    .line 97
    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method public synthetic lambda$showApkDownloadConfirmDialog$0$Updater(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V
    .locals 1

    .line 246
    iget v0, p0, Lcom/coderpage/lib/update/Updater;->notifyIconResId:I

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, p1, p2, v0}, Lcom/coderpage/lib/update/Updater;->startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/lib/update/Updater;->startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showApkDownloadConfirmDialog$1$Updater(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 245
    new-instance p4, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;

    invoke-direct {p4, p0, p1, p2}, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;-><init>(Lcom/coderpage/lib/update/Updater;Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V

    .line 252
    invoke-virtual {p3, p4}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;->onConfirmDownload(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 254
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public showApkDownloadConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel",
            "callback"
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;ZLcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public showApkDownloadConfirmDialogForce(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel",
            "callback"
        }
    .end annotation

    const/4 v0, 0x1

    .line 283
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coderpage/lib/update/Updater;->showApkDownloadConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;ZLcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    sget v1, Lcom/coderpage/lib/update/R$mipmap;->ic_launcher:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coderpage/lib/update/Updater;->startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Ljava/lang/String;I)V

    return-void
.end method

.method public startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel",
            "notifyIconResId"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/coderpage/lib/update/Updater;->startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Ljava/lang/String;I)V

    return-void
.end method

.method public startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel",
            "filename"
        }
    .end annotation

    .line 138
    sget v0, Lcom/coderpage/lib/update/R$mipmap;->ic_launcher:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coderpage/lib/update/Updater;->startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Ljava/lang/String;I)V

    return-void
.end method

.method public startDownloadApk(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel",
            "filename",
            "notifyIconResId"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 157
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {p1, p2, p3, p4}, Lcom/coderpage/lib/update/DownloadService;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "notifyIconResId must not be 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
