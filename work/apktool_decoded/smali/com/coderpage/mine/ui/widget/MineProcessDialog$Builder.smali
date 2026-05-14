.class public Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;
.super Ljava/lang/Object;
.source "MineProcessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/MineProcessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isCancelOutside:Z

.field private isCancelable:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->isCancelable:Z

    .line 62
    iput-boolean v0, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->isCancelOutside:Z

    .line 65
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/coderpage/mine/ui/widget/MineProcessDialog;
    .locals 3

    .line 94
    new-instance v0, Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;-><init>(Landroid/content/Context;Lcom/coderpage/mine/ui/widget/MineProcessDialog$1;)V

    .line 95
    iget-boolean v1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->isCancelable:Z

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setCancelable(Z)V

    .line 96
    iget-boolean v1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->isCancelOutside:Z

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public setCancelOutside(Z)Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCancelOutside"
        }
    .end annotation

    .line 89
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->isCancelOutside:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCancelable"
        }
    .end annotation

    .line 81
    iput-boolean p1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->isCancelable:Z

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method
