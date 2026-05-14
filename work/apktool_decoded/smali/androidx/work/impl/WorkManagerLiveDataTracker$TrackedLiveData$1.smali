.class Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData$1;
.super Ljava/lang/Object;
.source "WorkManagerLiveDataTracker.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData;-><init>(Landroidx/work/impl/WorkManagerLiveDataTracker;Landroid/arch/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData;)V
    .locals 0

    .line 55
    iput-object p1, p0, Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData$1;->this$0:Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData$1;->this$0:Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData;

    invoke-virtual {v0, p1}, Landroidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
