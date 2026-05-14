.class public interface abstract Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;
.super Ljava/lang/Object;
.source "TextEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNegativeClick(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editText",
            "dialog"
        }
    .end annotation
.end method

.method public abstract onPositiveClick(Landroid/widget/EditText;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editText",
            "dialog",
            "text"
        }
    .end annotation
.end method
