.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;
.super Ljava/lang/Object;
.source "TallyChartViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Ljava/lang/Long;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iError"
        }
    .end annotation

    .line 290
    invoke-static {}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query first record time error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "iError"
        }
    .end annotation

    .line 259
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public success(Ljava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstRecordTime"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>()V

    .line 263
    new-instance v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>()V

    .line 265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 266
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setYear(I)V

    const/4 v4, 0x2

    .line 267
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setMonth(I)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 270
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setYear(I)V

    .line 271
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setMonth(I)V

    .line 273
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result p1

    :goto_0
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v0

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0xc

    if-gt v0, v2, :cond_1

    .line 276
    new-instance v2, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;-><init>()V

    .line 277
    invoke-virtual {v2, p1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setYear(I)V

    .line 278
    invoke-virtual {v2, v0}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->setMonth(I)V

    .line 279
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v4}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$400(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "firstRecordTime"
        }
    .end annotation

    .line 259
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$2;->success(Ljava/lang/Long;)V

    return-void
.end method
