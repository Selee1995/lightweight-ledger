.class public final enum Lcom/tendcloud/tenddata/bc$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tendcloud/tenddata/bc$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/bc$a;

.field public static final enum STOP:Lcom/tendcloud/tenddata/bc$a;

.field public static final enum UNSTOP:Lcom/tendcloud/tenddata/bc$a;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/tendcloud/tenddata/bc$a;

    const-string v1, "UNSTOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/bc$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/bc$a;->UNSTOP:Lcom/tendcloud/tenddata/bc$a;

    .line 29
    new-instance v1, Lcom/tendcloud/tenddata/bc$a;

    const-string v3, "STOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tendcloud/tenddata/bc$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/bc$a;->STOP:Lcom/tendcloud/tenddata/bc$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tendcloud/tenddata/bc$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lcom/tendcloud/tenddata/bc$a;->$VALUES:[Lcom/tendcloud/tenddata/bc$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/tendcloud/tenddata/bc$a;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/bc$a;
    .locals 1

    .line 27
    const-class v0, Lcom/tendcloud/tenddata/bc$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/bc$a;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/bc$a;
    .locals 1

    .line 27
    sget-object v0, Lcom/tendcloud/tenddata/bc$a;->$VALUES:[Lcom/tendcloud/tenddata/bc$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/bc$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/bc$a;

    return-object v0
.end method


# virtual methods
.method public index()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/tendcloud/tenddata/bc$a;->index:I

    return v0
.end method
