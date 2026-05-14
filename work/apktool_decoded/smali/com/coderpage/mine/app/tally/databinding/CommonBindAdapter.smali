.class public Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;
.super Ljava/lang/Object;
.source "CommonBindAdapter.java"


# static fields
.field private static final MONEY_DECIMAL_FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->MONEY_DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "categoryIconName"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/data/CategoryIconHelper;->resId(Ljava/lang/String;)I

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static setDisplayTimeText(Landroid/widget/TextView;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "timeMills"
        }
    .end annotation

    .line 98
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setHtmlText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "htmlText"
        }
    .end annotation

    .line 108
    invoke-static {p1}, Lcom/coderpage/base/utils/ResUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "src"
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setMoneyText(Landroid/widget/TextView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "money",
            "format"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 84
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object p2, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->MONEY_DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p2, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 87
    sget-object v2, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->MONEY_DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "font"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "font/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coderpage/mine/common/Font;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setViewSelect(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "selected"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method
