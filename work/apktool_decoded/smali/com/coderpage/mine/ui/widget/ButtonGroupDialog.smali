.class public Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;
.super Landroid/app/Dialog;
.source "ButtonGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mViewGroup:Landroid/widget/LinearLayout;


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

    const v0, 0x7f0f0191

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeResId"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0b007a

    .line 29
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->setContentView(I)V

    const p1, 0x7f090096

    .line 30
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->mViewGroup:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public addItem(ILcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "txtRes",
            "onClickListener"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->addItem(Ljava/lang/CharSequence;Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/CharSequence;Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "txt",
            "onClickListener"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 39
    invoke-static {p2, p0}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;->access$000(Lcom/coderpage/mine/ui/widget/ButtonGroupDialog$OnItemClickListener;Landroid/content/DialogInterface;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09012c

    .line 42
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/ButtonGroupDialog;->mViewGroup:Landroid/widget/LinearLayout;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
