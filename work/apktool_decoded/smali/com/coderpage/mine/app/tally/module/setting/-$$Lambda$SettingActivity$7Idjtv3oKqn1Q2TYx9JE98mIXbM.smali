.class public final synthetic Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$7Idjtv3oKqn1Q2TYx9JE98mIXbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$7Idjtv3oKqn1Q2TYx9JE98mIXbM;->f$0:Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$7Idjtv3oKqn1Q2TYx9JE98mIXbM;->f$0:Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->lambda$subscribeUi$0$SettingActivity(Ljava/lang/String;)V

    return-void
.end method
