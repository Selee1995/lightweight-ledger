.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;
.super Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;
.source "MarkerViewDailyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;
    }
.end annotation


# instance fields
.field private mEntry:Lcom/github/mikephil/charting/data/Entry;

.field private mListener:Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;

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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f090138

    .line 32
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mTvData:Landroid/widget/TextView;

    const p1, 0x7f090139

    .line 33
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mTvDate:Landroid/widget/TextView;

    .line 34
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mTvData:Landroid/widget/TextView;

    sget-object p2, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 35
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mTvDate:Landroid/widget/TextView;

    sget-object p2, Lcom/coderpage/mine/common/Font;->QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 36
    new-instance p1, Lcom/coderpage/mine/app/tally/module/chart/widget/-$$Lambda$MarkerViewDailyData$BVUzdZZdRDSQl3u1j7_GPttEDrM;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/-$$Lambda$MarkerViewDailyData$BVUzdZZdRDSQl3u1j7_GPttEDrM;-><init>(Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$MarkerViewDailyData(Landroid/view/View;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mListener:Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mEntry:Lcom/github/mikephil/charting/data/Entry;

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v0, p1, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;->onClick(Landroid/view/View;Lcom/github/mikephil/charting/data/Entry;)V

    :cond_0
    return-void
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 5
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

    .line 49
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mEntry:Lcom/github/mikephil/charting/data/Entry;

    .line 50
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;

    .line 51
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getDayOfMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const v3, 0x7f0e00ca

    .line 51
    invoke-static {v1, v3, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00a5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->getAmount()F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mTvData:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-super {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method

.method public setOnClickListener(Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData;->mListener:Lcom/coderpage/mine/app/tally/module/chart/widget/MarkerViewDailyData$OnClickListener;

    return-void
.end method
