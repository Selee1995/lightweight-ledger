.class Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;
.super Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;
.source "RecordViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onDateClick(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmClick(Landroid/content/DialogInterface;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "timeInMills"
        }
    .end annotation

    .line 187
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-static {p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->access$102(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;J)J

    .line 188
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)Landroidx/databinding/ObservableField;

    move-result-object p1

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance p3, Ljava/util/Date;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onDatePick(Landroid/content/DialogInterface;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "year",
            "month",
            "dayOfMonth"
        }
    .end annotation

    return-void
.end method
