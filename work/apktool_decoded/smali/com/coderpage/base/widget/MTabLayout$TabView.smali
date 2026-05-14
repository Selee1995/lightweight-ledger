.class Lcom/coderpage/base/widget/MTabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "MTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coderpage/base/widget/MTabLayout;


# direct methods
.method public constructor <init>(Lcom/coderpage/base/widget/MTabLayout;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    .line 1427
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 1424
    iput v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mDefaultMaxLines:I

    .line 1428
    iget v0, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabBackgroundResId:I

    if-eqz v0, :cond_0

    .line 1429
    iget v0, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabBackgroundResId:I

    .line 1430
    invoke-static {p2, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1429
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1432
    :cond_0
    iget p2, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingStart:I

    iget v0, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingTop:I

    iget v1, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingEnd:I

    iget p1, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, p1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    .line 1434
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setGravity(I)V

    const/4 p1, 0x1

    .line 1435
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setOrientation(I)V

    .line 1436
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setClickable(Z)V

    .line 1438
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 1437
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "line",
            "textSize"
        }
    .end annotation

    .line 1702
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    return p2
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "textView",
            "iconView"
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1651
    :goto_0
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1652
    :goto_1
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 1656
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1657
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1658
    invoke-virtual {p0, v5}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    .line 1660
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1661
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1666
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 1669
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1671
    invoke-virtual {p0, v5}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 1673
    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1674
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 1680
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 1682
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 1684
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-virtual {v2, v4}, Lcom/coderpage/base/widget/MTabLayout;->dpToPx(I)I

    move-result v5

    .line 1686
    :cond_7
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v2, :cond_8

    .line 1687
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1688
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v3

    .line 1691
    :goto_5
    invoke-static {p0, v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getTab()Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1492
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1494
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1499
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1501
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "origWidthMeasureSpec",
            "origHeightMeasureSpec"
        }
    .end annotation

    .line 1506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1507
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1508
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-virtual {v2}, Lcom/coderpage/base/widget/MTabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 1517
    :cond_0
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget p1, p1, Lcom/coderpage/base/widget/MTabLayout;->mTabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1524
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1527
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1528
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getResources()Landroid/content/res/Resources;

    .line 1529
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v0, v0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSize:F

    .line 1530
    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mDefaultMaxLines:I

    .line 1532
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 1535
    :cond_2
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v0, v0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextMultiLineSize:F

    .line 1540
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 1541
    iget-object v4, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 1542
    iget-object v5, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v6, v0, v2

    if-nez v6, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 1548
    :cond_4
    iget-object v5, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v5, v5, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    .line 1554
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1555
    invoke-direct {p0, v2, v6, v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v2

    .line 1556
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    const/4 v3, 0x0

    :cond_6
    if-eqz v3, :cond_7

    .line 1562
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1563
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1564
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1443
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1445
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1447
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->playSoundEffect(I)V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->select()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1578
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    const/4 v0, 0x0

    .line 1579
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1458
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1460
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    const/4 v0, 0x4

    .line 1464
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1470
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1472
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-static {v0}, Lcom/coderpage/base/widget/MTabLayout;->access$000(Lcom/coderpage/base/widget/MTabLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1475
    :cond_2
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1478
    :goto_1
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v0, v0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSize:F

    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v2, v2, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSelectSize:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v0, v0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSelectSize:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    if-eqz p1, :cond_3

    iget v2, v2, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSelectSize:F

    goto :goto_2

    :cond_3
    iget v2, v2, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSize:F

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1482
    :cond_4
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1483
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1485
    :cond_5
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1486
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    return-void
.end method

.method setTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1572
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 1573
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 5

    .line 1583
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1584
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 1586
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 1589
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1591
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coderpage/base/widget/MTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1593
    :cond_2
    iput-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1594
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 1595
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1597
    :cond_3
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 1598
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1599
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v1, 0x1020014

    .line 1602
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1604
    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mDefaultMaxLines:I

    :cond_5
    const v1, 0x1020006

    .line 1606
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 1609
    :cond_6
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1610
    invoke-virtual {p0, v2}, Lcom/coderpage/base/widget/MTabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1611
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1613
    :cond_7
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1614
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1617
    :goto_1
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1619
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 1620
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/coderpage/base/R$layout;->design_layout_tab_icon:I

    .line 1621
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1622
    invoke-virtual {p0, v1, v2}, Lcom/coderpage/base/widget/MTabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1623
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1625
    :cond_8
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_9

    .line 1626
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/coderpage/base/R$layout;->design_layout_tab_text:I

    .line 1627
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1628
    invoke-virtual {p0, v1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1629
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1630
    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mDefaultMaxLines:I

    .line 1632
    :cond_9
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v3, v3, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSize:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1633
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget-object v1, v1, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a

    .line 1634
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget-object v3, v3, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1636
    :cond_a
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/coderpage/base/widget/MTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1639
    :cond_b
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v1, :cond_c

    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    .line 1640
    :cond_c
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/coderpage/base/widget/MTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_d
    :goto_2
    if-eqz v0, :cond_e

    .line 1645
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-virtual {p0, v2}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setSelected(Z)V

    return-void
.end method
