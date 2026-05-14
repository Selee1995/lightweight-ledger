.class Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;
.super Ljava/lang/Object;
.source "RecordViewModel.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onDescClick(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editText",
            "dialog"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/UIUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onPositiveClick(Landroid/widget/EditText;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editText",
            "dialog",
            "text"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 158
    iget-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel$1;->val$activity:Landroid/app/Activity;

    invoke-static {p3, p1}, Lcom/coderpage/base/utils/UIUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
