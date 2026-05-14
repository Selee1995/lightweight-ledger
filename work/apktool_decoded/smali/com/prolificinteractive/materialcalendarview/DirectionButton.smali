.class Lcom/prolificinteractive/materialcalendarview/DirectionButton;
.super Landroid/widget/ImageView;
.source "DirectionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->getThemeSelectableBackgroundId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setBackgroundResource(I)V

    return-void
.end method

.method private static getThemeSelectableBackgroundId(Landroid/content/Context;)I
    .locals 4

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectableItemBackgroundBorderless"

    const-string v3, "attr"

    .line 33
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x101045c

    goto :goto_0

    :cond_0
    const v0, 0x101030e

    .line 44
    :cond_1
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    iget p0, v1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public setColor(I)V
    .locals 1

    .line 22
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3dcccccd    # 0.1f

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setAlpha(F)V

    return-void
.end method
