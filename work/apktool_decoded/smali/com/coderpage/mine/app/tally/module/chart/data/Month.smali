.class public Lcom/coderpage/mine/app/tally/module/chart/data/Month;
.super Ljava/lang/Object;
.source "Month.java"


# instance fields
.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "year",
            "month"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    .line 18
    iput p2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 54
    iget v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    iget v3, p1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    if-eq v2, v3, :cond_2

    return v1

    .line 55
    :cond_2
    iget v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    iget p1, p1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getMonth()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget v1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    add-int/2addr v0, v1

    return v0
.end method

.method public next()Lcom/coderpage/mine/app/tally/module/chart/data/Month;
    .locals 4

    .line 38
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    .line 39
    iget v1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    .line 44
    :cond_0
    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v1, v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>(II)V

    return-object v1
.end method

.method public pre()Lcom/coderpage/mine/app/tally/module/chart/data/Month;
    .locals 4

    .line 25
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    .line 26
    iget v1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xc

    .line 31
    :cond_0
    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v1, v0, v2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>(II)V

    return-object v1
.end method

.method public setMonth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    return-void
.end method

.method public setYear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "year"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[year=%d,month=%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
