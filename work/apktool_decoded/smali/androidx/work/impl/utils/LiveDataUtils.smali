.class public Landroidx/work/impl/utils/LiveDataUtils;
.super Ljava/lang/Object;
.source "LiveDataUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dedupedMappedLiveDataFor(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<In:",
            "Ljava/lang/Object;",
            "Out:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TIn;>;",
            "Landroid/arch/core/util/Function<",
            "TIn;TOut;>;",
            "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "TOut;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    .line 59
    new-instance v2, Landroidx/work/impl/utils/LiveDataUtils$1;

    invoke-direct {v2, p2, v0, p1, v1}, Landroidx/work/impl/utils/LiveDataUtils$1;-><init>(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Object;Landroid/arch/core/util/Function;Landroid/arch/lifecycle/MediatorLiveData;)V

    invoke-virtual {v1, p0, v2}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    return-object v1
.end method
