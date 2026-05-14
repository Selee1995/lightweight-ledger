.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;->INSTANCE:Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$VKXz4otacdBM0omOalrSq633IcY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
