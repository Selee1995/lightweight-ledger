.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;
.super Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;
.source "MarkerViewMonthData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;
    }
.end annotation


# instance fields
.field private mEntry:Lcom/github/mikephil/charting/data/Entry;

.field private mListener:Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;

.field private mTvData:Landroid/widget/TextView;

.field private mTvDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutResource"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f090138

    .line 34
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mTvData:Landroid/widget/TextView;

    const p1, 0x7f090139

    .line 35
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mTvDate:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mTvData:Landroid/widget/TextView;

    sget-object p2, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 37
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mTvDate:Landroid/widget/TextView;

    sget-object p2, Lcom/coderpage/mine/common/Font;->QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 39
    new-instance p1, Lcom/coderpage/mine/app/tally/module/chart/widget/-$$Lambda$MarkerViewMonthData$i2pTToSEa7B9bLBRvGTQxx4zbIY;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/-$$Lambda$MarkerViewMonthData$i2pTToSEa7B9bLBRvGTQxx4zbIY;-><init>(Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$MarkerViewMonthData(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mListener:Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mEntry:Lcom/github/mikephil/charting/data/Entry;

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0, p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;->onClick(Landroid/view/View;Lcom/github/mikephil/charting/data/Entry;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e",
            "highlight"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mEntry:Lcom/github/mikephil/charting/data/Entry;

    .line 53
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;

    .line 54
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const v1, 0x7f0e00dc

    .line 55
    invoke-static {v2, v1, v4}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u00a5"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->getIncomeAmount()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->getExpenseAmount()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const v0, 0x7f0e00d2

    .line 57
    invoke-static {v2, v0, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mTvData:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method

.method public setOnClickListener(Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData;->mListener:Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewMonthData$OnClickListener;

    return-void
.end method
