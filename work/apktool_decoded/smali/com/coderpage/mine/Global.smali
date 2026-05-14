.class public Lcom/coderpage/mine/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field private static volatile mInstance:Lcom/coderpage/mine/Global;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mNeedFingerprint:Landroidx/databinding/ObservableBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coderpage/mine/Global;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/coderpage/mine/Global;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/coderpage/mine/Global;
    .locals 2

    .line 26
    sget-object v0, Lcom/coderpage/mine/Global;->mInstance:Lcom/coderpage/mine/Global;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/coderpage/mine/Global;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/coderpage/mine/Global;->mInstance:Lcom/coderpage/mine/Global;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/coderpage/mine/Global;

    invoke-direct {v1}, Lcom/coderpage/mine/Global;-><init>()V

    sput-object v1, Lcom/coderpage/mine/Global;->mInstance:Lcom/coderpage/mine/Global;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/coderpage/mine/Global;->mInstance:Lcom/coderpage/mine/Global;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/coderpage/mine/Global;->setAppContext(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object v0

    invoke-static {p0}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isFingerprintSecretOpen(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/Global;->setNeedFingerprint(Z)V

    return-void
.end method

.method private setAppContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/Global;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getNeedFingerprintAuth()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/Global;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getmAppContext()Landroid/content/Context;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/Global;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public isNeedFingerprint()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/coderpage/mine/Global;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setNeedFingerprint(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needFingerprint"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/coderpage/mine/Global;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
