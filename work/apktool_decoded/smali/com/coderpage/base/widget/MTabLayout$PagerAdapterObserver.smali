.class Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "MTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/base/widget/MTabLayout;


# direct methods
.method constructor <init>(Lcom/coderpage/base/widget/MTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2162
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2172
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->populateFromPagerAdapter()V

    return-void
.end method
