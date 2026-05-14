.class public abstract Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "RecordItemBinding.java"


# instance fields
.field public final cardView:Landroid/support/v7/widget/CardView;

.field public final etAmount:Landroid/widget/TextView;

.field public final ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

.field public final ivLock:Landroid/support/v7/widget/AppCompatImageView;

.field public final lyCategoryIcon:Landroid/widget/FrameLayout;

.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mData:Lcom/coderpage/mine/app/tally/persistence/model/Record;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvCategoryName:Landroid/widget/TextView;

.field public final tvLock:Landroid/widget/TextView;

.field public final tvRecordDec:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/CardView;Landroid/widget/TextView;Landroid/support/v7/widget/AppCompatImageView;Landroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "cardView",
            "etAmount",
            "ivCategoryIcon",
            "ivLock",
            "lyCategoryIcon",
            "tvCategoryName",
            "tvLock",
            "tvRecordDec",
            "tvTime"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 65
    iput-object p4, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->cardView:Landroid/support/v7/widget/CardView;

    .line 66
    iput-object p5, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->etAmount:Landroid/widget/TextView;

    .line 67
    iput-object p6, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    .line 68
    iput-object p7, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->ivLock:Landroid/support/v7/widget/AppCompatImageView;

    .line 69
    iput-object p8, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->lyCategoryIcon:Landroid/widget/FrameLayout;

    .line 70
    iput-object p9, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->tvCategoryName:Landroid/widget/TextView;

    .line 71
    iput-object p10, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->tvLock:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->tvRecordDec:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->tvTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 137
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b0058

    .line 149
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 119
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b0058

    .line 114
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b0058

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Lcom/coderpage/mine/app/tally/persistence/model/Record;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->mData:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    return-object v0
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract setData(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
