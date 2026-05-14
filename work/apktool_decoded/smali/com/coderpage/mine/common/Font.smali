.class public final enum Lcom/coderpage/mine/common/Font;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coderpage/mine/common/Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coderpage/mine/common/Font;

.field public static final enum QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

.field public static final enum QUICKSAND_LIGHT:Lcom/coderpage/mine/common/Font;

.field public static final enum QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

.field public static final enum QUICKSAND_REGULAR:Lcom/coderpage/mine/common/Font;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lcom/coderpage/mine/common/Font;

    const-string v1, "QUICKSAND_BOLD"

    const/4 v2, 0x0

    const-string v3, "Quicksand-Bold.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/coderpage/mine/common/Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coderpage/mine/common/Font;->QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

    .line 13
    new-instance v1, Lcom/coderpage/mine/common/Font;

    const-string v3, "QUICKSAND_LIGHT"

    const/4 v4, 0x1

    const-string v5, "Quicksand-Light.ttf"

    invoke-direct {v1, v3, v4, v5}, Lcom/coderpage/mine/common/Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/coderpage/mine/common/Font;->QUICKSAND_LIGHT:Lcom/coderpage/mine/common/Font;

    .line 14
    new-instance v3, Lcom/coderpage/mine/common/Font;

    const-string v5, "QUICKSAND_MEDIUM"

    const/4 v6, 0x2

    const-string v7, "Quicksand-Medium.ttf"

    invoke-direct {v3, v5, v6, v7}, Lcom/coderpage/mine/common/Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    .line 15
    new-instance v5, Lcom/coderpage/mine/common/Font;

    const-string v7, "QUICKSAND_REGULAR"

    const/4 v8, 0x3

    const-string v9, "Quicksand-Regular.ttf"

    invoke-direct {v5, v7, v8, v9}, Lcom/coderpage/mine/common/Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_REGULAR:Lcom/coderpage/mine/common/Font;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/coderpage/mine/common/Font;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/coderpage/mine/common/Font;->$VALUES:[Lcom/coderpage/mine/common/Font;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/coderpage/mine/common/Font;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coderpage/mine/common/Font;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 10
    const-class v0, Lcom/coderpage/mine/common/Font;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/common/Font;

    return-object p0
.end method

.method public static values()[Lcom/coderpage/mine/common/Font;
    .locals 1

    .line 10
    sget-object v0, Lcom/coderpage/mine/common/Font;->$VALUES:[Lcom/coderpage/mine/common/Font;

    invoke-virtual {v0}, [Lcom/coderpage/mine/common/Font;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coderpage/mine/common/Font;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/coderpage/mine/common/Font;->name:Ljava/lang/String;

    return-object v0
.end method
