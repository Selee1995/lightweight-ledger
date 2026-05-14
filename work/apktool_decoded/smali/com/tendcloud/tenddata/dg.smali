.class public final enum Lcom/tendcloud/tenddata/dg;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tendcloud/tenddata/dg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/dg;

.field public static final enum b:Lcom/tendcloud/tenddata/dg;

.field public static final enum c:Lcom/tendcloud/tenddata/dg;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/dg;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/tendcloud/tenddata/dg;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    const-string v3, "wifi"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/dg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/dg;->a:Lcom/tendcloud/tenddata/dg;

    .line 5
    new-instance v1, Lcom/tendcloud/tenddata/dg;

    const-string v3, "CELLULAR"

    const/4 v4, 0x1

    const-string v5, "cellular"

    invoke-direct {v1, v3, v4, v5}, Lcom/tendcloud/tenddata/dg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/dg;->b:Lcom/tendcloud/tenddata/dg;

    .line 6
    new-instance v3, Lcom/tendcloud/tenddata/dg;

    const-string v5, "BLUETOOTH"

    const/4 v6, 0x2

    const-string v7, "bluetooth"

    invoke-direct {v3, v5, v6, v7}, Lcom/tendcloud/tenddata/dg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/dg;->c:Lcom/tendcloud/tenddata/dg;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tendcloud/tenddata/dg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/tendcloud/tenddata/dg;->e:[Lcom/tendcloud/tenddata/dg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/tendcloud/tenddata/dg;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/dg;
    .locals 1

    .line 3
    const-class v0, Lcom/tendcloud/tenddata/dg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/dg;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/dg;
    .locals 1

    .line 3
    sget-object v0, Lcom/tendcloud/tenddata/dg;->e:[Lcom/tendcloud/tenddata/dg;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/dg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/dg;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tendcloud/tenddata/dg;->d:Ljava/lang/String;

    return-object v0
.end method
