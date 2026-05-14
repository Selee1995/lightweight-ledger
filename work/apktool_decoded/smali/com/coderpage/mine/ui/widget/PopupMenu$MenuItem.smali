.class public Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuItem"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/coderpage/mine/ui/widget/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/coderpage/mine/ui/widget/PopupMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->this$0:Lcom/coderpage/mine/ui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->id:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 168
    iput p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->id:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;->text:Ljava/lang/String;

    return-void
.end method
