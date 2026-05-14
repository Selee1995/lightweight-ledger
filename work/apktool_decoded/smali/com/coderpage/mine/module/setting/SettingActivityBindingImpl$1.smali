.class Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl$1;
.super Ljava/lang/Object;
.source "SettingActivityBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl$1;->this$0:Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl$1;->this$0:Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;

    iget-object v0, v0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl$1;->this$0:Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;

    iget-object v1, v1, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getFingerprintSecretOpen()Landroidx/databinding/ObservableBoolean;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :cond_2
    return-void
.end method
