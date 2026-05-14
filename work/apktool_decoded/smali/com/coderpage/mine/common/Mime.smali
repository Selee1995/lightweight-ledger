.class public final enum Lcom/coderpage/mine/common/Mime;
.super Ljava/lang/Enum;
.source "Mime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coderpage/mine/common/Mime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coderpage/mine/common/Mime;

.field public static final enum ALL:Lcom/coderpage/mine/common/Mime;

.field public static final enum CSV:Lcom/coderpage/mine/common/Mime;

.field public static final enum JSON:Lcom/coderpage/mine/common/Mime;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/coderpage/mine/common/Mime;

    const-string v1, "CSV"

    const/4 v2, 0x0

    const-string v3, "text/csv"

    invoke-direct {v0, v1, v2, v3}, Lcom/coderpage/mine/common/Mime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coderpage/mine/common/Mime;->CSV:Lcom/coderpage/mine/common/Mime;

    .line 9
    new-instance v1, Lcom/coderpage/mine/common/Mime;

    const-string v3, "JSON"

    const/4 v4, 0x1

    const-string v5, "application/json"

    invoke-direct {v1, v3, v4, v5}, Lcom/coderpage/mine/common/Mime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/coderpage/mine/common/Mime;->JSON:Lcom/coderpage/mine/common/Mime;

    .line 10
    new-instance v3, Lcom/coderpage/mine/common/Mime;

    const-string v5, "ALL"

    const/4 v6, 0x2

    const-string v7, "*/*"

    invoke-direct {v3, v5, v6, v7}, Lcom/coderpage/mine/common/Mime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/coderpage/mine/common/Mime;->ALL:Lcom/coderpage/mine/common/Mime;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/coderpage/mine/common/Mime;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/coderpage/mine/common/Mime;->$VALUES:[Lcom/coderpage/mine/common/Mime;

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
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/coderpage/mine/common/Mime;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coderpage/mine/common/Mime;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/coderpage/mine/common/Mime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/common/Mime;

    return-object p0
.end method

.method public static values()[Lcom/coderpage/mine/common/Mime;
    .locals 1

    .line 6
    sget-object v0, Lcom/coderpage/mine/common/Mime;->$VALUES:[Lcom/coderpage/mine/common/Mime;

    invoke-virtual {v0}, [Lcom/coderpage/mine/common/Mime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coderpage/mine/common/Mime;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/coderpage/mine/common/Mime;->type:Ljava/lang/String;

    return-object v0
.end method
