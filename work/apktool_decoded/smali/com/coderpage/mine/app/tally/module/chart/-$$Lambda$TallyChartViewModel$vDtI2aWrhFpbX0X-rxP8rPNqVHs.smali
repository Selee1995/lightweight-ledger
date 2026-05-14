.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$vDtI2aWrhFpbX0X-rxP8rPNqVHs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->lambda$refreshData$4(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)Z

    move-result p1

    return p1
.end method
