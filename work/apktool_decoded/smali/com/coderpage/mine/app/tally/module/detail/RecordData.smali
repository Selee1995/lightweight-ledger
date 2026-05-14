.class public Lcom/coderpage/mine/app/tally/module/detail/RecordData;
.super Ljava/lang/Object;
.source "RecordData.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private categoryIcon:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private recordId:J

.field private time:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryIcon()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->categoryIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->recordId:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->type:I

    return v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->amount:Ljava/lang/String;

    return-void
.end method

.method public setCategoryIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryIcon"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->categoryIcon:Ljava/lang/String;

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryName"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->desc:Ljava/lang/String;

    return-void
.end method

.method public setRecordId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordId"
        }
    .end annotation

    .line 37
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->recordId:J

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->time:Ljava/lang/String;

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

    .line 29
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->type:I

    return-void
.end method
