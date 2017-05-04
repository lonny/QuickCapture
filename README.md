# QuickCapture
Simple QuickTime video recording for Unified Remote.

(For cameras. This is **not** a screen recorder.)

---

## Features
* Adds video recording to Unified Remote's QuickTime capabilities.
* Extremely simple two-button operation.
* Should work on any version of OS X that will run Unified Remote.
* Did I say easy to use?

The goal was to make this remote as simple and bullet-proof as reasonably possible.

## Requirements

* OS X (or MacOS)
* QuickTime
* Unified Remote

## Remote Setup

You must have Unified Remote server set up on your Mac, and a wifi remote device (iOS, Android) running Unified Remote. If you don't have them search for "Unified Remote" in the appropriate app store. [Unified Remote's website](https://www.unifiedremote.com "Unified Remote") has good instructions and some tutorials.

Clone or download the files in this repository using the green "clone or download" button. You can also choose to download a zip file.

Once you have the remote files, [follow the instructions here](https://www.unifiedremote.com/tutorials/how-to-install-a-custom-remote "Install Custom Remote") to set the remote up on your system.

## QuickTime Setup

Preparation involves some setting up of QuickTime. This is not a limitation of QuickCapture. At some point you would have to do this anyway if you want to record via QuickTime. I'm just including these steps for completeness. 

Start the QuickTime Player app.

From the menu, select "File > New Movie Recording".

Hover your mouse over the recording window. You should see a red recording button with a down arrow next to it. Click the down arrow.

The popup window should be divided into 3 parts. In the top part, select the proper video input device (camera).

In the middle section, choose your audio input device. It is often the same as the camera, if the camera has a microphone, but you can use other audio inputs.

And finally, in the lower section, choose the quality of video you want to use. Keep in mind that if you have a high-resolution camera, and choose the highest quality, your video files can get very large very quickly.

Now quit QuickTime.

Your setup is complete when you can start up QuickTime, select "File > New Movie Recording", click the Record button, and get the results you want.


## Remote Operation

Start Unified Remote on your remote device. Click the "+" button to add remotes. You should find the QuickCapture remote in the Media category.

Tap QuickCapture to start it.

There are only two buttons: start and stop.

Tapping the start button opens QuickTime and starts recording.

Tapping the stop button will stop recording and save the file, then close QuickTime.

It is that easy. The whole operating philosophy is "keep it simple".

You can do this as many times as you like. New videos will not overwrite older videos. The files will be saved to your ~/Documents directory. The name of each video will be the date and time the file was saved, in this format:

`YYMMDD_HHMMSS.mov`

year, month, day, then hours, minutes and seconds of the time the recording was stopped.

Example: "170329_115529.mov" was saved on 2017 March 29 at 11:55:29 A.M.

The order is year-month-day so the files will properly sort by date.

Since each filename is unique, you can start and stop recording at will. A new video will be created each time.

## Things To Remember

* Tapping start when QuickTime is already recording will have no effect.

* Tapping stop when QuickTime is not recording will have no effect.

* The remote does not depend on a constant connection. You can start a recording, quit Unified Remote, come back later, start the QuickCapture remote again, and tap the stop button to stop and save.

* Do not forget you are recording. This remote does not cause the QuickTime window to be brought to the front, but it still records. If you start QuickTime, move a large window in front of it, then quit QuickTime via the dock, when you start a recording via the remote the QuickTime window may not be visible.

* Warning: if you have already started a QuickTime recording manually, or by some other means, tapping "stop" may cause recording to cease and the file to be saved with the usual QuickCapture timestamp.

----

### NOTES

Future goals for improving this remote are:

1. Feedback. I would like to create a feedback mechanism so the remote can display to the user whether QuickTime is currently recording, even if the remote app is stopped and started again. Information about QuickTime when it is recording has been sparse so far, though, so it may be a while before that feature is added. If I learn how to do that, QuickCapture can be further simplified to a single start/stop button.

2. Figuring out how to identify recordings started by QuickCapture so the remote will not accidentally stop recordings that were started by other means.

3. Button icons more suited to the size of the buttons.

4. Make "Bring QuickTime window to front" an optional setting.