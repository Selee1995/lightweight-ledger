.class public final enum Lcom/tendcloud/tenddata/an$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tendcloud/tenddata/an$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/an$a;

.field public static final enum EMPTY:Lcom/tendcloud/tenddata/an$a;

.field public static final enum FORM:Lcom/tendcloud/tenddata/an$a;

.field public static final enum JSON:Lcom/tendcloud/tenddata/an$a;

.field public static final enum UNIVERSAL_STREAM:Lcom/tendcloud/tenddata/an$a;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 50
    new-instance v0, Lcom/tendcloud/tenddata/an$a;

    const-string v1, "UNIVERSAL_STREAM"

    const/4 v2, 0x0

    const-string v3, "application/octet-stream"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/an$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/an$a;->UNIVERSAL_STREAM:Lcom/tendcloud/tenddata/an$a;

    .line 51
    new-instance v1, Lcom/tendcloud/tenddata/an$a;

    const-string v3, "JSON"

    const/4 v4, 0x1

    const-string v5, "application/json"

    invoke-direct {v1, v3, v4, v5}, Lcom/tendcloud/tenddata/an$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/an$a;->JSON:Lcom/tendcloud/tenddata/an$a;

    .line 52
    new-instance v3, Lcom/tendcloud/tenddata/an$a;

    const-string v5, "FORM"

    const/4 v6, 0x2

    const-string v7, "application/x-www-form-urlencoded"

    invoke-direct {v3, v5, v6, v7}, Lcom/tendcloud/tenddata/an$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/an$a;->FORM:Lcom/tendcloud/tenddata/an$a;

    .line 53
    new-instance v5, Lcom/tendcloud/tenddata/an$a;

    const-string v7, "EMPTY"

    const/4 v8, 0x3

    const-string v9, ""

    invoke-direct {v5, v7, v8, v9}, Lcom/tendcloud/tenddata/an$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tendcloud/tenddata/an$a;->EMPTY:Lcom/tendcloud/tenddata/an$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tendcloud/tenddata/an$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 49
    sput-object v7, Lcom/tendcloud/tenddata/an$a;->$VALUES:[Lcom/tendcloud/tenddata/an$a;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/tendcloud/tenddata/an$a;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/an$a;
    .locals 1

    .line 49
    const-class v0, Lcom/tendcloud/tenddata/an$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/an$a;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/an$a;
    .locals 1

    .line 49
    sget-object v0, Lcom/tendcloud/tenddata/an$a;->$VALUES:[Lcom/tendcloud/tenddata/an$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/an$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/an$a;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tendcloud/tenddata/an$a;->name:Ljava/lang/String;

    return-object v0
.end method
