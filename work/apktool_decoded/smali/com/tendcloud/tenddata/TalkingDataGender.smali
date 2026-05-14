.class public final enum Lcom/tendcloud/tenddata/TalkingDataGender;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tendcloud/tenddata/TalkingDataGender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/tendcloud/tenddata/TalkingDataGender;

.field public static final enum MALE:Lcom/tendcloud/tenddata/TalkingDataGender;

.field public static final enum UNKNOWN:Lcom/tendcloud/tenddata/TalkingDataGender;

.field private static final synthetic b:[Lcom/tendcloud/tenddata/TalkingDataGender;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataGender;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/TalkingDataGender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGender;->UNKNOWN:Lcom/tendcloud/tenddata/TalkingDataGender;

    new-instance v1, Lcom/tendcloud/tenddata/TalkingDataGender;

    const-string v3, "MALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tendcloud/tenddata/TalkingDataGender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/TalkingDataGender;->MALE:Lcom/tendcloud/tenddata/TalkingDataGender;

    new-instance v3, Lcom/tendcloud/tenddata/TalkingDataGender;

    const-string v5, "FEMALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tendcloud/tenddata/TalkingDataGender;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tendcloud/tenddata/TalkingDataGender;->FEMALE:Lcom/tendcloud/tenddata/TalkingDataGender;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tendcloud/tenddata/TalkingDataGender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/tendcloud/tenddata/TalkingDataGender;->b:[Lcom/tendcloud/tenddata/TalkingDataGender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/tendcloud/tenddata/TalkingDataGender;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TalkingDataGender;
    .locals 1

    .line 3
    const-class v0, Lcom/tendcloud/tenddata/TalkingDataGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/TalkingDataGender;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TalkingDataGender;
    .locals 1

    .line 3
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGender;->b:[Lcom/tendcloud/tenddata/TalkingDataGender;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TalkingDataGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TalkingDataGender;

    return-object v0
.end method


# virtual methods
.method public index()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tendcloud/tenddata/TalkingDataGender;->a:I

    return v0
.end method
