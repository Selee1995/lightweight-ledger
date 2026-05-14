.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;->INSTANCE:Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$NCazF2n7DQ1nhsYb3v7d4TogddY;

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

    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->lambda$refreshData$1(Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;)Z

    move-result p1

    return p1
.end method
