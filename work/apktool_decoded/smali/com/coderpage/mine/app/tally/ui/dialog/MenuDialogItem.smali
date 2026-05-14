.class public Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;
.super Ljava/lang/Object;
.source "MenuDialogItem.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "path",
            "icon"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->path:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->path:Ljava/lang/String;

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

    .line 34
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->path:Ljava/lang/String;

    return-void
.end method
