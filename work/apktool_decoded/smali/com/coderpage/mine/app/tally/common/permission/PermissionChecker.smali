.class public Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionChecker"

.field private static final TAG_NUMBER:Ljava/lang/String; = "1"

.field private static granted:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBodySensors(Landroid/app/Activity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "sensor"

    .line 250
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 252
    new-instance v2, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker$1;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker$1;-><init>()V

    .line 261
    invoke-virtual {p0, v2, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 262
    invoke-virtual {p0, v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return v0
.end method

.method private static checkLocation(Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    sput-boolean v0, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->granted:Z

    const-string v0, "location"

    .line 232
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p0

    const-string v1, "gps"

    .line 236
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "network"

    .line 238
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_1
    return v0
.end method

.method private static checkReadCalendar(Landroid/app/Activity;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.android.calendar/calendars"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkReadCallLog(Landroid/app/Activity;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://call_log/calls"

    .line 293
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 296
    invoke-static {}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->needCheckByRunDangerousCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "number"

    .line 297
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->isNumberIndexInfoIsNull(Landroid/database/Cursor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    .line 302
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static checkReadContacts(Landroid/app/Activity;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 359
    invoke-static {}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->needCheckByRunDangerousCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data1"

    .line 360
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->isNumberIndexInfoIsNull(Landroid/database/Cursor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    .line 366
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static checkReadPhoneState(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "phone"

    .line 282
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 283
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static checkReadSms(Landroid/app/Activity;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://sms/"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 177
    invoke-static {}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->needCheckByRunDangerousCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "date"

    .line 178
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->isNumberIndexInfoIsNull(Landroid/database/Cursor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    .line 183
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static checkReadStorage(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    new-instance p0, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkRecordAudio(Landroid/app/Activity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;-><init>()V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "PermissionChecker"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".3gp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->startRecord(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->stopRecord()V

    .line 126
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->getSuccess()Z

    move-result p0

    return p0
.end method

.method private static checkWriteCallLog(Landroid/app/Activity;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "number"

    const-string v3, "1"

    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x1335308

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "date"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "new"

    const-string v4, "0"

    .line 156
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://call_log/calls"

    .line 157
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 159
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "number = ?"

    invoke-virtual {p0, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return v1
.end method

.method private static checkWriteContacts(Landroid/app/Activity;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadContacts(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 318
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 320
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 322
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    .line 323
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data2"

    const-string v4, "PermissionChecker"

    .line 326
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data1"

    const-string v5, "1"

    .line 327
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts"

    .line 331
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v7, v1

    new-array v9, v2, [Ljava/lang/String;

    aput-object v4, v9, v1

    const/4 v10, 0x0

    const-string v8, "display_name=?"

    move-object v5, p0

    move-object v6, v0

    .line 333
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 336
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-array v6, v2, [Ljava/lang/String;

    aput-object v4, v6, v1

    const-string v4, "display_name=?"

    .line 338
    invoke-virtual {p0, v0, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "content://com.android.contacts/data"

    .line 339
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/String;

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "raw_contact_id=?"

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private static checkWriteStorage(Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    new-instance p0, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionChecker"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0

    .line 208
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static isNumberIndexInfoIsNull(Landroid/database/Cursor;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "numberIndex"
        }
    .end annotation

    .line 385
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 386
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isPermissionGranted(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "permission"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc

    const/16 v4, 0xa

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_f
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :sswitch_10
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :sswitch_11
    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :sswitch_12
    const-string v2, "android.permission.BODY_SENSORS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_13
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :sswitch_14
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_15
    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_16
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_17
    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x13

    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    return v8

    .line 98
    :pswitch_0
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadSms(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 95
    :pswitch_1
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkRecordAudio(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 92
    :pswitch_2
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkWriteStorage(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 90
    :pswitch_3
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadStorage(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 87
    :pswitch_4
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkLocation(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkBodySensors(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadCalendar(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 66
    :cond_3
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkWriteCallLog(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 62
    :cond_4
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadPhoneState(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 60
    :cond_5
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadCallLog(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 55
    :cond_6
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkWriteContacts(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 53
    :cond_7
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionChecker;->checkReadContacts(Landroid/app/Activity;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_17
        -0x72f13779 -> :sswitch_16
        -0x7286b8f4 -> :sswitch_15
        -0x70918bc1 -> :sswitch_14
        -0x583351d1 -> :sswitch_13
        -0x49cb6684 -> :sswitch_12
        -0x3562fc09 -> :sswitch_11
        -0x3562e583 -> :sswitch_10
        -0x1833add0 -> :sswitch_f
        -0x3c1ac56 -> :sswitch_e
        -0x550ba9 -> :sswitch_d
        0x322a742 -> :sswitch_c
        0x6afff6d -> :sswitch_b
        0xcc96c13 -> :sswitch_a
        0x1b9efa65 -> :sswitch_9
        0x23fb06fe -> :sswitch_8
        0x24658583 -> :sswitch_7
        0x2ec2d2a2 -> :sswitch_6
        0x38cade52 -> :sswitch_5
        0x4bcdda0f -> :sswitch_4
        0x516a29a7 -> :sswitch_3
        0x6d24f988 -> :sswitch_2
        0x75dd2d9c -> :sswitch_1
        0x7f2f307d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static needCheckByRunDangerousCode()Z
    .locals 2

    .line 399
    invoke-static {}, Lcom/coderpage/base/utils/FitUtils;->getBrand()Lcom/coderpage/base/utils/FitUtils$Brand;

    move-result-object v0

    .line 400
    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->HUAWEI:Lcom/coderpage/base/utils/FitUtils$Brand;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->XIAO_MI:Lcom/coderpage/base/utils/FitUtils$Brand;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->MEI_ZU:Lcom/coderpage/base/utils/FitUtils$Brand;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
