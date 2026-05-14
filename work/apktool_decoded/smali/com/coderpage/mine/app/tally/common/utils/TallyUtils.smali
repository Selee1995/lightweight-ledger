.class public Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;
.super Ljava/lang/Object;
.source "TallyUtils.java"


# static fields
.field private static final DISPLAY_MONEY_FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->DISPLAY_MONEY_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDisplayMoney(D)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "money"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->DISPLAY_MONEY_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDisplayTime(J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMills"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->getRecordDisplayDate(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
