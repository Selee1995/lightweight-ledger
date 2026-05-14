.class public Lcom/coderpage/base/widget/MTabItem;
.super Landroid/view/View;
.source "MTabItem.java"


# instance fields
.field final mCustomLayout:I

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mText:Ljava/lang/CharSequence;


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

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/coderpage/base/widget/MTabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lcom/coderpage/base/R$styleable;->TabItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 31
    sget v0, Lcom/coderpage/base/R$styleable;->MTabItem_android_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabItem;->mText:Ljava/lang/CharSequence;

    .line 32
    sget v0, Lcom/coderpage/base/R$styleable;->MTabItem_android_icon:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/coderpage/base/widget/MTabItem;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/base/widget/MTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 33
    sget p1, Lcom/coderpage/base/R$styleable;->MTabItem_android_layout:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/coderpage/base/widget/MTabItem;->mCustomLayout:I

    .line 35
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "typedArray",
            "index"
        }
    .end annotation

    .line 39
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
