.class public final synthetic Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$asUWCLRrlmQOTElhcxESgnR0kWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$asUWCLRrlmQOTElhcxESgnR0kWw;->f$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    return-void
.end method


# virtual methods
.method public final onAuthFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$asUWCLRrlmQOTElhcxESgnR0kWw;->f$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->lambda$onFingerprintSecretClick$0$SettingViewModel(Z)V

    return-void
.end method
