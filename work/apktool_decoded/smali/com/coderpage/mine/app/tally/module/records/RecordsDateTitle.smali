.class public Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;
.super Ljava/lang/Object;
.source "RecordsDateTitle.java"


# instance fields
.field private month:I

.field private year:I


# direct methods
.method constructor <init>(II)V
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->year:I

    .line 14
    iput p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->month:I

    return-void
.end method


# virtual methods
.method public getMonth()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->year:I

    return v0
.end method
