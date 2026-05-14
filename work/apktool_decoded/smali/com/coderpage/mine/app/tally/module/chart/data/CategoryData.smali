.class public Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;
.super Ljava/lang/Object;
.source "CategoryData.java"


# static fields
.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private amount:D

.field private amountTotal:D

.field private categoryIconName:Ljava/lang/String;

.field private categoryId:J

.field private categoryName:Ljava/lang/String;

.field private categoryUniqueName:Ljava/lang/String;

.field private endDate:J

.field private mPercentFormat:Ljava/text/DecimalFormat;

.field private startDate:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->mPercentFormat:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->amount:D

    return-wide v0
.end method

.method public getAmountTotal()D
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->amountTotal:D

    return-wide v0
.end method

.method public getCategoryIconName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryIconName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryId:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryUniqueName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->endDate:J

    return-wide v0
.end method

.method public getPercentRate()D
    .locals 5

    .line 46
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->amountTotal:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 49
    :cond_0
    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->amount:D

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public getPercentRateString()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->mPercentFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getPercentRate()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->startDate:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->type:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 125
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->amount:D

    return-void
.end method

.method public setAmountTotal(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amountTotal"
        }
    .end annotation

    .line 117
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->amountTotal:D

    return-void
.end method

.method public setCategoryIconName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryIconName"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryIconName:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryId"
        }
    .end annotation

    .line 85
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryId:J

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

    .line 101
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setCategoryUniqueName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUniqueName"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->categoryUniqueName:Ljava/lang/String;

    return-void
.end method

.method public setEndDate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDate"
        }
    .end annotation

    .line 77
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->endDate:J

    return-void
.end method

.method public setStartDate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDate"
        }
    .end annotation

    .line 69
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->startDate:J

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

    .line 61
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->type:I

    return-void
.end method
