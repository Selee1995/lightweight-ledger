.class public Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;
.super Ljava/lang/Object;
.source "RecordQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private categoryUniqueNameArray:[Ljava/lang/String;

.field private endTime:J

.field private startTime:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->type:I

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->startTime:J

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->endTime:J

    return-void
.end method


# virtual methods
.method public build()Lcom/coderpage/mine/app/tally/module/records/RecordQuery;
    .locals 3

    .line 188
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordQuery$1;)V

    .line 189
    iget v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->type:I

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->access$202(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;I)I

    .line 190
    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->startTime:J

    invoke-static {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->access$302(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;J)J

    .line 191
    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->endTime:J

    invoke-static {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->access$402(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;J)J

    .line 192
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->categoryUniqueNameArray:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordQuery;->access$502(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;[Ljava/lang/String;)[Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryUniqueNameArray([Ljava/lang/String;)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUniqueNameArray"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->categoryUniqueNameArray:[Ljava/lang/String;

    return-object p0
.end method

.method public setEndTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 173
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->endTime:J

    return-object p0
.end method

.method public setStartTime(J)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 163
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->startTime:J

    return-object p0
.end method

.method public setType(I)Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 153
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordQuery$Builder;->type:I

    return-object p0
.end method
