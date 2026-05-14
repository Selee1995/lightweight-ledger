.class public Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;
.super Ljava/lang/Object;
.source "HomeDisplayData.java"


# static fields
.field public static final TYPE_BACKUP_ITEM:I = 0x4

.field public static final TYPE_BOTTOM:I = -0x1

.field public static final TYPE_MONTH_INFO:I = 0x1

.field public static final TYPE_RECENT_DAY_INFO:I = 0x2

.field public static final TYPE_RECORD_ITEM:I = 0x3


# instance fields
.field private internal:Ljava/lang/Object;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "internal"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->type:I

    .line 29
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->internal:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getInternal()Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->internal:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->type:I

    return v0
.end method

.method public setInternal(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internal"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->internal:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->type:I

    return-void
.end method
