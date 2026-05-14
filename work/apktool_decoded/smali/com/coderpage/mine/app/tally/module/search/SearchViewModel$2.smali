.class Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SearchViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sender",
            "propertyId"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroidx/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$400(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$600(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$500(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$600(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->access$500(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
