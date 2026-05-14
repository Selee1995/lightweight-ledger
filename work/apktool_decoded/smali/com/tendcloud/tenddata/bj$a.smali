.class Lcom/tendcloud/tenddata/bj$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static instance:Lcom/tendcloud/tenddata/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/tendcloud/tenddata/bj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/bj;-><init>(Lcom/tendcloud/tenddata/bj$1;)V

    sput-object v0, Lcom/tendcloud/tenddata/bj$a;->instance:Lcom/tendcloud/tenddata/bj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tendcloud/tenddata/bj;
    .locals 1

    .line 86
    sget-object v0, Lcom/tendcloud/tenddata/bj$a;->instance:Lcom/tendcloud/tenddata/bj;

    return-object v0
.end method
