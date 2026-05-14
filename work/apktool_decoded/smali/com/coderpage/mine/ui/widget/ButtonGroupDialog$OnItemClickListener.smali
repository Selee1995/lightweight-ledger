.class public abstract Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;
.super Ljava/lang/Object;
.source "ButtonGroupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnItemClickListener"
.end annotation


# instance fields
.field private mDialog:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;->setDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private setDialog(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/content/DialogInterface;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "v"
        }
    .end annotation
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;->mDialog:Landroid/content/DialogInterface;

    invoke-virtual {p0, v0, p1}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;->onClick(Landroid/content/DialogInterface;Landroid/view/View;)V

    return-void
.end method
