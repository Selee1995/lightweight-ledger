.class public Lcom/coderpage/base/widget/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/widget/LoadingLayout$Config;,
        Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;
    }
.end annotation


# static fields
.field private static final GLOBAL_CONFIG:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coderpage/base/widget/LoadingLayout$Config;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_EMPTY:I = 0x2

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_SUCCESS:I


# instance fields
.field private mButtonNegative:Landroid/widget/TextView;

.field private mButtonPositive:Landroid/widget/TextView;

.field private mConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coderpage/base/widget/LoadingLayout$Config;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerView:Landroid/view/View;

.field private mCurrentStatus:I

.field private mLoadResultContainerLy:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatusIconIv:Landroid/support/v7/widget/AppCompatImageView;

.field private mStatusMessageTv:Landroid/widget/TextView;

.field private mUserActionListener:Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/coderpage/base/widget/LoadingLayout;->GLOBAL_CONFIG:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/coderpage/base/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/base/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 41
    iput p2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mCurrentStatus:I

    .line 43
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    .line 67
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/LoadingLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getGlobalConfig()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coderpage/base/widget/LoadingLayout$Config;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/coderpage/base/widget/LoadingLayout;->GLOBAL_CONFIG:Landroid/util/SparseArray;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    sget-object v1, Lcom/coderpage/base/widget/LoadingLayout;->GLOBAL_CONFIG:Landroid/util/SparseArray;

    new-instance v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-virtual {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->copy()Lcom/coderpage/base/widget/LoadingLayout$Config;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    new-instance v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-virtual {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->copy()Lcom/coderpage/base/widget/LoadingLayout$Config;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    new-instance v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-virtual {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->copy()Lcom/coderpage/base/widget/LoadingLayout$Config;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    new-instance v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-virtual {v1}, Lcom/coderpage/base/widget/LoadingLayout$Config;->copy()Lcom/coderpage/base/widget/LoadingLayout$Config;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 176
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/coderpage/base/R$layout;->base_layout_loading:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    .line 177
    sget v0, Lcom/coderpage/base/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 178
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    sget v0, Lcom/coderpage/base/R$id;->ly_status_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mLoadResultContainerLy:Landroid/view/View;

    .line 179
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    sget v0, Lcom/coderpage/base/R$id;->iv_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusIconIv:Landroid/support/v7/widget/AppCompatImageView;

    .line 180
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    sget v0, Lcom/coderpage/base/R$id;->tv_status_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusMessageTv:Landroid/widget/TextView;

    .line 181
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    sget v0, Lcom/coderpage/base/R$id;->tv_button_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonNegative:Landroid/widget/TextView;

    .line 182
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    sget v0, Lcom/coderpage/base/R$id;->tv_button_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonPositive:Landroid/widget/TextView;

    .line 184
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonNegative:Landroid/widget/TextView;

    new-instance v0, Lcom/coderpage/base/widget/-$$Lambda$LoadingLayout$TpgpcNv_Ry_SDKYD8JB7uerbc_g;

    invoke-direct {v0, p0}, Lcom/coderpage/base/widget/-$$Lambda$LoadingLayout$TpgpcNv_Ry_SDKYD8JB7uerbc_g;-><init>(Lcom/coderpage/base/widget/LoadingLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonPositive:Landroid/widget/TextView;

    new-instance v0, Lcom/coderpage/base/widget/-$$Lambda$LoadingLayout$jFo1yz9uLEqlwjI4t6Ow7Kfuz6c;

    invoke-direct {v0, p0}, Lcom/coderpage/base/widget/-$$Lambda$LoadingLayout$jFo1yz9uLEqlwjI4t6Ow7Kfuz6c;-><init>(Lcom/coderpage/base/widget/LoadingLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusIconIv:Landroid/support/v7/widget/AppCompatImageView;

    new-instance v0, Lcom/coderpage/base/widget/-$$Lambda$LoadingLayout$k2L44wnneO8_IczwRNLvNPOWJD8;

    invoke-direct {v0, p0}, Lcom/coderpage/base/widget/-$$Lambda$LoadingLayout$k2L44wnneO8_IczwRNLvNPOWJD8;-><init>(Lcom/coderpage/base/widget/LoadingLayout;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getConfig(I)Lcom/coderpage/base/widget/LoadingLayout$Config;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusCode"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/base/widget/LoadingLayout$Config;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mConfig:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mCurrentStatus:I

    return v0
.end method

.method public synthetic lambda$init$0$LoadingLayout(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mUserActionListener:Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;->onNegativeButtonClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$1$LoadingLayout(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mUserActionListener:Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;->onPositiveButtonClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$2$LoadingLayout(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mUserActionListener:Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;->onIconClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 204
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mContainerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/LoadingLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 111
    iput p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mCurrentStatus:I

    .line 112
    invoke-virtual {p0}, Lcom/coderpage/base/widget/LoadingLayout;->update()V

    return-void
.end method

.method public setUserActionListener(Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mUserActionListener:Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;

    return-void
.end method

.method public update()V
    .locals 6

    .line 117
    iget v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mCurrentStatus:I

    const/16 v1, 0x8

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    .line 129
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mLoadResultContainerLy:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mCurrentStatus:I

    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/LoadingLayout;->getConfig(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$000(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusIconIv:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$000(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 141
    :cond_0
    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$100(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonNegative:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coderpage/base/widget/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$100(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    :cond_1
    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$200(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonPositive:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coderpage/base/widget/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$200(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 150
    :cond_2
    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$300(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonNegative:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$300(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 154
    :cond_3
    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$400(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonPositive:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$400(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 158
    :cond_4
    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$500(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusMessageTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coderpage/base/widget/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$500(Lcom/coderpage/base/widget/LoadingLayout$Config;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    :cond_5
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusMessageTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$600(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mStatusMessageTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$600(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonNegative:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$700(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonNegative:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$700(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonPositive:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$800(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/coderpage/base/widget/LoadingLayout;->mButtonPositive:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coderpage/base/widget/LoadingLayout$Config;->access$800(Lcom/coderpage/base/widget/LoadingLayout$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mLoadResultContainerLy:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mLoadResultContainerLy:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/coderpage/base/widget/LoadingLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
