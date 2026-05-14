.class public Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "HomeViewModel.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# static fields
.field private static final BASE_H5_URL:Ljava/lang/String; = "http://h5.coderpage.com"

.field private static final URL_APP_PROTOCOL_PRIVACY:Ljava/lang/String; = "https://selee1995.github.io/lightweight-ledger/privacy.html"

.field private static final URL_APP_PROTOCOL_USER:Ljava/lang/String; = "https://selee1995.github.io/lightweight-ledger/user_agreement.html"


# instance fields
.field private mCheckBackupNoticeTip:Z

.field private mDataList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForceHideBackupNotice:Z

.field private mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

.field private final mNeedPermissionArray:[Ljava/lang/String;

.field private mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

.field private mRefreshing:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

.field private mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Lcom/coderpage/mine/app/tally/module/home/HomeActivity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mForceHideBackupNotice:Z

    .line 72
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mCheckBackupNoticeTip:Z

    .line 78
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    .line 81
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    .line 83
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, p1

    const/4 p1, 0x1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, p1

    .line 313
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mNeedPermissionArray:[Ljava/lang/String;

    .line 89
    new-instance p1, Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    .line 90
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/Global;->getNeedFingerprintAuth()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    .line 91
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;I)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleVersionUpgrade()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/update/UpdateUtils;->startNewClientVersionCheckBackground(Landroid/content/Context;)V

    .line 333
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$3yk13Wa9o7EZkMLWtX6eOtb4s4A;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$3yk13Wa9o7EZkMLWtX6eOtb4s4A;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private initPrivacyAuth()V
    .locals 2

    .line 247
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->isAgreePrivacyProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$zGxvBNKthmTZFXLfLP3obaRBubs;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$zGxvBNKthmTZFXLfLP3obaRBubs;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private isAutoBackupEnable()Z
    .locals 4

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isAutoBackup(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mNeedPermissionArray:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic lambda$initPrivacyAuth$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 289
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x1

    .line 291
    invoke-static {p0}, Lcom/coderpage/mine/persistence/kv/KvCache;->setAgreePrivacyProtocol(Z)V

    const-string p0, "1"

    .line 292
    invoke-static {p0}, Lcom/coderpage/mine/persistence/kv/KvCache;->setAgreePrivacyProtocolVersion(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/MineApp;->initTd()V

    return-void
.end method

.method static synthetic lambda$initPrivacyAuth$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 300
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 301
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coderpage/mine/MineApp;->exit()V

    return-void
.end method

.method static synthetic lambda$onBackupNoticeCloseClick$0(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onBackupNoticeCloseClick$2(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$onBackupNoticeCloseClick$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 133
    invoke-static {p1}, Lcom/coderpage/mine/persistence/kv/KvCache;->setShowBackupTip(Z)V

    .line 134
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$onResume$5(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getNeedFingerprint()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method getViewReliedTask()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Lcom/coderpage/mine/app/tally/module/home/HomeActivity;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$handleVersionUpgrade$9$HomeViewModel(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 337
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    if-nez v1, :cond_0

    .line 338
    new-instance v1, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    invoke-virtual {v1, p1, v0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->getNotGrantedPermissionArray(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;

    invoke-direct {v1, p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;[Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/coderpage/mine/app/tally/update/UpdateUtils;->checkPersistedNewVersionAndShowUpdateConfirmDialog(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V

    return-void
.end method

.method public synthetic lambda$initPrivacyAuth$8$HomeViewModel(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
    .locals 8

    const v0, 0x7f0e008f

    .line 255
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0091

    .line 256
    invoke-virtual {p0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0090

    .line 257
    invoke-virtual {p0, v2}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 261
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    .line 271
    new-instance v6, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$2;

    invoke-direct {v6, p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    const/16 v7, 0x21

    .line 280
    invoke-virtual {v5, v0, v3, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    .line 282
    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 285
    new-instance v0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    invoke-direct {v0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;-><init>(Landroid/app/Activity;)V

    const p1, 0x7f0e0092

    .line 286
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setTitle(I)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {p1, v5}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$ElsY_GOa3IlC7IXMexzaRcJwZco;->INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$ElsY_GOa3IlC7IXMexzaRcJwZco;

    const v1, 0x7f0e008d

    .line 288
    invoke-virtual {p1, v1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$WEgeIkaCrRq2rzQqUw8jv16tT9M;->INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$WEgeIkaCrRq2rzQqUw8jv16tT9M;

    const v1, 0x7f0e008e

    .line 298
    invoke-virtual {p1, v1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setCancelable(Z)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public synthetic lambda$onBackupNoticeCloseClick$1$HomeViewModel()V
    .locals 2

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mForceHideBackupNotice:Z

    .line 119
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    sget-object v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$dHhqW535gxoYUgJkhlAe-4gorJM;->INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$dHhqW535gxoYUgJkhlAe-4gorJM;

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    .line 121
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$refresh$4$HomeViewModel(Lcom/coderpage/base/common/Result;)V
    .locals 13

    .line 156
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->isOk()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getRecent3DayRecordCount()I

    move-result p1

    .line 159
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getCurrentMonthExpenseTotalAmount()D

    move-result-wide v0

    .line 160
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getCurrentMonthInComeTotalAmount()D

    move-result-wide v2

    .line 161
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getTodayExpenseTotalAmount()D

    move-result-wide v4

    .line 162
    iget-object v6, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getTodayInComeTotalAmount()D

    move-result-wide v6

    .line 164
    iget-object v8, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {v8}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getCategoryExpenseTotal()Ljava/util/List;

    move-result-object v8

    .line 165
    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    invoke-virtual {v9}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->getTodayRecordList()Ljava/util/List;

    move-result-object v9

    .line 166
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->getBudgetMonth(Landroid/content/Context;)F

    move-result v11

    invoke-static {v12, v11, v4, v5}, Lcom/lightweightledger/app/BudgetCalculator;->formatTodayBudget(Landroid/content/Context;FD)Ljava/lang/String;

    move-result-object v11

    .line 167
    new-instance v10, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-direct {v10}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;-><init>()V

    .line 168
    invoke-virtual {v10, v0, v1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->setMonthExpenseAmount(D)V

    invoke-virtual {v10, v4, v5}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->setTodayExpenseAmount(D)V

    .line 169
    invoke-virtual {v10, v2, v3}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->setMonthInComeAmount(D)V

    .line 170
    invoke-virtual {v10, v8}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->setMonthCategoryExpenseData(Ljava/util/List;)V

    .line 172
    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;-><init>()V

    .line 173
    invoke-virtual {v0, v4, v5}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->setToadyExpenseAmount(D)V

    .line 174
    invoke-virtual {v0, v6, v7}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->setTodayIncomeAmount(D)V

    .line 175
    invoke-virtual {v0, v11}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->setDisplayBudgetAmount(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->setRecent3DayRecordsCount(I)V

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->isShowBackupTip()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mForceHideBackupNotice:Z

    if-nez v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->isAutoBackupEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 187
    new-instance v2, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method observableDataList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;",
            ">;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method observableRefreshing()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onAddNewRecordClick(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->openAsAddNewExpense(Landroid/content/Context;)V

    return-void
.end method

.method public onBackupNoticeClick(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mCheckBackupNoticeTip:Z

    return-void
.end method

.method public onBackupNoticeCloseClick(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$qMe6RQB5TutC9RxOCq4AlhZg5hc;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$qMe6RQB5TutC9RxOCq4AlhZg5hc;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    .line 123
    new-instance v1, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u5907\u4efd\u63d0\u793a"

    .line 124
    invoke-virtual {v1, v2}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object v1

    const-string v2, "\u8d26\u5355\u8bb0\u5f55\u4fdd\u5b58\u5728\u5e94\u7528\u4e2d\uff08\u540e\u53f0\u4e0d\u4f1a\u4e0a\u4f20\u60a8\u7684\u8d26\u5355\u8bb0\u5f55\uff09\uff0c\u82e5\u8bef\u5220\u6216\u5378\u8f7d\u5e94\u7528\u5c06\u4e22\u5931\u8d26\u5355\u6570\u636e\uff0c\u5efa\u8bae\u5f00\u542f\u81ea\u52a8\u5907\u4efd\u529f\u80fd\u5c06\u6570\u636e\u5907\u4efd\u5230\u624b\u673a\u5b58\u50a8\u3002"

    .line 125
    invoke-virtual {v1, v2}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$zB264c-zF-RcrTjb3Jg1-rtTcww;

    invoke-direct {v2, p1, v0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$zB264c-zF-RcrTjb3Jg1-rtTcww;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-string p1, "\u53bb\u6253\u5f00"

    .line 126
    invoke-virtual {v1, p1, v2}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$-7x5uaiBrash0_kYf_ciScMbAKk;

    invoke-direct {v1, v0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$-7x5uaiBrash0_kYf_ciScMbAKk;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "\u4e0d\u518d\u63d0\u793a"

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setCancelable(Z)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onBottomMenuClick(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->show(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->initPrivacyAuth()V

    return-void
.end method

.method public onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 221
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventRecordAdd(Lcom/coderpage/mine/app/tally/eventbus/EventRecordAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->refresh()V

    return-void
.end method

.method public onEventRecordDelete(Lcom/coderpage/mine/app/tally/eventbus/EventRecordDelete;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->refresh()V

    return-void
.end method

.method public onEventRecordUpdate(Lcom/coderpage/mine/app/tally/eventbus/EventRecordUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->refresh()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 208
    iget-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mCheckBackupNoticeTip:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mCheckBackupNoticeTip:Z

    .line 212
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->isAutoBackupEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 214
    sget-object v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;->INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ArrayUtils;->remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I

    .line 215
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mDataList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method refresh()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRefreshing:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$5lnYsb99dnj5B6s9BcOBJBnqyY4;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$5lnYsb99dnj5B6s9BcOBJBnqyY4;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->loadCurrentMonthExpenseData(Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
