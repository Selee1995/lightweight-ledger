.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Landroid/arch/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroid/arch/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;->f$0:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$hKZz2LGdx1xkUCu0APK--KOv8MI;->f$0:Landroid/arch/lifecycle/MutableLiveData;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
