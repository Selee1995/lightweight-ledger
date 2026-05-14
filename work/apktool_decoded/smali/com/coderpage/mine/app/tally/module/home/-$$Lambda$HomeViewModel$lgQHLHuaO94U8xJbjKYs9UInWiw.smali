.class public final synthetic Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;->INSTANCE:Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$lgQHLHuaO94U8xJbjKYs9UInWiw;

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

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->lambda$onResume$5(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)Z

    move-result p1

    return p1
.end method
