.class public final enum Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;
.super Ljava/lang/Enum;
.source "BaseLoadDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

.field public static final enum LOAD:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

.field public static final enum LOAD_MORE:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

.field public static final enum REFRESH:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

.field public static final enum REFRESH_BACKGROUND:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 343
    new-instance v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    const-string v1, "LOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    .line 345
    new-instance v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    const-string v3, "REFRESH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->REFRESH:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    .line 347
    new-instance v3, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    const-string v5, "REFRESH_BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->REFRESH_BACKGROUND:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    .line 349
    new-instance v5, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    const-string v7, "LOAD_MORE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->LOAD_MORE:Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 341
    sput-object v7, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->$VALUES:[Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

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

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 341
    const-class v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;
    .locals 1

    .line 341
    sget-object v0, Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->$VALUES:[Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    invoke-virtual {v0}, [Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coderpage/mine/app/tally/common/utils/BaseLoadDelegate$RequestType;

    return-object v0
.end method
