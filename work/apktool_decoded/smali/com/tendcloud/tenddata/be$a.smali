.class public final enum Lcom/tendcloud/tenddata/be$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tendcloud/tenddata/be$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/be$a;

.field public static final enum FEMALE:Lcom/tendcloud/tenddata/be$a;

.field public static final enum MALE:Lcom/tendcloud/tenddata/be$a;

.field public static final enum UNKNOWN:Lcom/tendcloud/tenddata/be$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 514
    new-instance v0, Lcom/tendcloud/tenddata/be$a;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/be$a;->MALE:Lcom/tendcloud/tenddata/be$a;

    new-instance v1, Lcom/tendcloud/tenddata/be$a;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tendcloud/tenddata/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tendcloud/tenddata/be$a;->FEMALE:Lcom/tendcloud/tenddata/be$a;

    new-instance v3, Lcom/tendcloud/tenddata/be$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tendcloud/tenddata/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tendcloud/tenddata/be$a;->UNKNOWN:Lcom/tendcloud/tenddata/be$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tendcloud/tenddata/be$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 513
    sput-object v5, Lcom/tendcloud/tenddata/be$a;->$VALUES:[Lcom/tendcloud/tenddata/be$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 513
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/be$a;
    .locals 1

    .line 513
    const-class v0, Lcom/tendcloud/tenddata/be$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/be$a;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/be$a;
    .locals 1

    .line 513
    sget-object v0, Lcom/tendcloud/tenddata/be$a;->$VALUES:[Lcom/tendcloud/tenddata/be$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/be$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/be$a;

    return-object v0
.end method
