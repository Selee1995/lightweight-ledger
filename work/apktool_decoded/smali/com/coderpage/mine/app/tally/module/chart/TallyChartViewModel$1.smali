.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;
.super Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;
.source "TallyChartViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSelectDateClick(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 168
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthSelect(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "month"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->dismiss()V

    .line 172
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result p1

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->monthDateRange(II)Landroid/util/Pair;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/Calendar;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 174
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/Calendar;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 176
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    .line 177
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    return-void
.end method
