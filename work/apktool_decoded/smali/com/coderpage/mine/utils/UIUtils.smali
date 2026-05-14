.class public Lcom/coderpage/mine/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static final RES_IDS_ACTION_BAR_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040003

    aput v2, v0, v1

    .line 15
    sput-object v0, Lcom/coderpage/mine/utils/UIUtils;->RES_IDS_ACTION_BAR_SIZE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateActionBarSize(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 30
    :cond_1
    sget-object v1, Lcom/coderpage/mine/utils/UIUtils;->RES_IDS_ACTION_BAR_SIZE:[I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    float-to-int p0, v0

    return p0
.end method
