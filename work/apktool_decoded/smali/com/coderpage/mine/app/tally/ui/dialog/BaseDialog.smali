.class public abstract Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "styleRes"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->init(Landroid/app/Activity;)V

    return-void
.end method

.method private initWindow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getGravity()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method protected init(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->initView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->initWindow(I)V

    return-void
.end method

.method public abstract initView(Landroid/app/Activity;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method
