.class Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$1;
.super Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-direct {p0}, Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "view"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->load()V

    return-void
.end method

.method public onPositiveButtonClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "view"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->load()V

    return-void
.end method
