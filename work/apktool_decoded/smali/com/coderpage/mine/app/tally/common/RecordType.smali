.class public final enum Lcom/coderpage/mine/app/tally/common/RecordType;
.super Ljava/lang/Enum;
.source "RecordType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coderpage/mine/app/tally/common/RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coderpage/mine/app/tally/common/RecordType;

.field public static final enum EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

.field public static final enum INCOME:Lcom/coderpage/mine/app/tally/common/RecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/coderpage/mine/app/tally/common/RecordType;

    const-string v1, "EXPENSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/app/tally/common/RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    .line 15
    new-instance v1, Lcom/coderpage/mine/app/tally/common/RecordType;

    const-string v3, "INCOME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coderpage/mine/app/tally/common/RecordType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coderpage/mine/app/tally/common/RecordType;->INCOME:Lcom/coderpage/mine/app/tally/common/RecordType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/coderpage/mine/app/tally/common/RecordType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/coderpage/mine/app/tally/common/RecordType;->$VALUES:[Lcom/coderpage/mine/app/tally/common/RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/common/RecordType;
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
    const-class v0, Lcom/coderpage/mine/app/tally/common/RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/common/RecordType;

    return-object p0
.end method

.method public static values()[Lcom/coderpage/mine/app/tally/common/RecordType;
    .locals 1

    .line 10
    sget-object v0, Lcom/coderpage/mine/app/tally/common/RecordType;->$VALUES:[Lcom/coderpage/mine/app/tally/common/RecordType;

    invoke-virtual {v0}, [Lcom/coderpage/mine/app/tally/common/RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coderpage/mine/app/tally/common/RecordType;

    return-object v0
.end method
