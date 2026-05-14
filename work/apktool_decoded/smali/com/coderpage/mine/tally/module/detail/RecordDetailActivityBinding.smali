.class public abstract Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "RecordDetailActivityBinding.java"


# instance fields
.field public final btnModify:Landroid/widget/TextView;

.field public final ivBottomShadow:Landroid/view/View;

.field public final ivCategoryIcon:Landroid/widget/FrameLayout;

.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mData:Lcom/coderpage/mine/app/tally/module/detail/RecordData;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final tvCategoryName:Landroid/widget/TextView;

.field public final tvNote:Landroid/widget/TextView;

.field public final tvNoteLabel:Landroid/widget/TextView;

.field public final tvRecordAmount:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvTimeLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/support/v7/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "btnModify",
            "ivBottomShadow",
            "ivCategoryIcon",
            "toolbar",
            "tvCategoryName",
            "tvNote",
            "tvNoteLabel",
            "tvRecordAmount",
            "tvTime",
            "tvTimeLabel"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 67
    iput-object p4, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->btnModify:Landroid/widget/TextView;

    .line 68
    iput-object p5, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->ivBottomShadow:Landroid/view/View;

    .line 69
    iput-object p6, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->ivCategoryIcon:Landroid/widget/FrameLayout;

    .line 70
    iput-object p7, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 71
    iput-object p8, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->tvCategoryName:Landroid/widget/TextView;

    .line 72
    iput-object p9, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->tvNote:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->tvNoteLabel:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->tvRecordAmount:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->tvTime:Landroid/widget/TextView;

    .line 76
    iput-object p13, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->tvTimeLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 140
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
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

    const v0, 0x7f0b0061

    .line 152
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 122
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
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

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
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

    const v0, 0x7f0b0061

    .line 117
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
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

    const v0, 0x7f0b0061

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Lcom/coderpage/mine/app/tally/module/detail/RecordData;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->mData:Lcom/coderpage/mine/app/tally/module/detail/RecordData;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

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

.method public abstract setData(Lcom/coderpage/mine/app/tally/module/detail/RecordData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
