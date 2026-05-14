.class abstract Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method abstract bindData(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method
