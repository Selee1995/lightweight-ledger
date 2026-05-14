.class Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPagerFocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->access$300(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->access$300(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V

    return-void
.end method
